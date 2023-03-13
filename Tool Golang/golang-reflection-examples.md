# Golang - Utilizing Reflection (Code Examples)

## Reflect - printStruct: & Print out struct
```go
func (s *stuctObj) printStruct() error {
    val := reflect.ValueOf(s).Elem()
    vType := val.Type()
    
    for i := 0; i < val.NumField(); i++ {
        serializedField, err := json.Marshal(val.Field(i).Interface())
        if err != nil {
            return fmt.Errorf("error serializing: %w", err)
        }

        log.Printf("\tField: %-10s Value: %s\n", vType.Field(i).Name, string(serializedField))
    }

    return nil
}
```

## Reflect struct - processData: fields of type []*T - access each field - append data
```go
type Data struct {
    Infos1 Infos1    // []*Info1
    Infos2 Infos2    // []*Info2
    ...
}

func processData(d *Data) (OtherData, error) {
    otherData := OtherData{}
    vData := reflect.ValueOf(*d)

    for i := 0; i < vData.NumField(); i++ {
        val := reflect.ValueOf(vData.Field(i).Interface())
        dataI,ok := val.Interface().(IData) // Data implements `IData` interface
        if !ok {
            return otherData, fmt.Errorf("%s does not implement IData", val)
        }

        // Run interface against []*T
        results, err := dataI.EvaluateData()    // IData interface method
        if err != nil {
            return otherData, fmt.Errorf("failed to process data: %w", err)
        }

        otherData = append(otherData, results)
    }

    return otherData, nil
}
```

## Reflect struct - printData: fields of type []*T - access each field - check if len([]*T) > 0
```go
type Data struct {
    Infos1 Infos1    // []*Info1
    Infos2 Infos2    // []*Info2
    ...
}

func printData(d *Data) error {
    vData := reflect.ValueOf(*d)

    for i := 0; i < vData.NumField(); i++ {
        val := reflect.ValueOf(vData.Field(i).Interface())
        dataI,ok := val.Interface().(IData) // Data implements `IData` interface
        if !ok {
            return otherData, fmt.Errorf("%s does not implement IData", val)
        }

        // Check field data exists before continuing (no reason to print if no data)
        if val.Len() > 0 {
            // Run interface against []*T
            results, err := dataI.PrintData()    // IData interface method
            if err != nil {
                return otherData, fmt.Errorf("failed to process data: %w", err)
            }
        }
    }

    return nil
}
```

## Reflect struct - getData: fields of type []*T - create new T - set []*T val - use interface of T
```go
type Data struct {
    Infos1 Infos1    // []*Info1
    Infos2 Infos2    // []*Info2
    ...
}

func getData(query string) (Data, error) {
    data := Data{}
    vData := reflect.ValueOf(&data).Elem()

    for i := 0; i < vData.NumField(); i++ {
        // Need to use Elem() twice to redirect from []*T to T
        valType := reflect.ValueOf(vData.Field(i).Interface()).Type().Elem().Elem()
        queryI := reflect.New(valType).Interface().(IQuery)   // Data - Info implements `IQuery` interface
        if !ok {
            return otherData, fmt.Errorf("%s does not implement IData", valType)
        }

        // Run interface against T
        query := queryI.GetQuery(query)          // IQuery interface method
        results, err := queryI.GetData(query)    // IQuery interface method
        if err != nil {
            return data, fmt.Errorf("failed to get data: %w", err)
        }

        // Set value for []*T
        vData.Field(i).Set(reflect.ValueOf(results))
    }

    return data, nil
}
```

## Reflect struct (Embedded Types) - getData: fields of type []*J - create new T - one field K (embedded type []*J) - set []*J val - use interface of []*J and []*L
```go
// T
type Data struct {
    Infos1 *Infos1          // *K
    Infos2 *Infos2          // *K
    ...
}

// K
type Infos1 struct {
    Infos1 []*Info1         // []*J
}

// J
type Info1 struct {
    Info1 ModelInfo1        // L
}

// L
type ModelInfo1 struct {
    data1   string
    data2   string
    ...
}

func getData(query string) (Data, error) {
    data := Data{}
    vData := reflect.ValueOf(&data).Elem()

    for i := 0; i < vData.NumField(); i++ {
        // Struct Data -> For each Field: Infos{i} -> 1 Field (Embedded Type) *[]Info{i} -> Info{i}
        // T -> Foreach T Field: *K -> 1 Field []*J -> J (dataType)
        
        valueData := vData
        typeInfos := reflect.ValueOf(valueData.Field(i).Interface()).Type.Elem()
        valueInfos := reflect.ValueOf(reflect.New(typeInfos).Interface()).Elem()
        valueInfo := reflect.ValueOf(valueInfos.Field(0).Interface()) // Embedded Type is the only field (take Field(0))
        typeInfo := valueInfo.Type().Elem().Elem()

        queryI := reflect.New(typeInfo).Interface().(IQuery)   // *K - typeInfos implements `IQuery`` interface
        if !ok {
            return otherData, fmt.Errorf("%s does not implement IData", valType)
        }

        // Query will fetch []*L (model type)
        query := queryI.GetQuery(query)             // IQuery interface method
        qResults, err := queryI.GetData(query)      // IQuery interface method
        if err != nil {
            return data, fmt.Errorf("failed to get data: %w", err)
        }

        convertI := reflect.New(typeInfos).Interface().(IConvert)   // *K - typeInfos implements `IConvert`` interface
        if !ok {
            return otherData, fmt.Errorf("%s does not implement IData", valType)
        }

        // Convert queryResults from []*L back to []*J
        results, err := convertI.Convert(query)    
        if err != nil {
            return otherData, fmt.Errorf("%s failed to convery query to type: %w", err)
        }

        // Set value for embedded type Infos{i} (type []*Info{i})
        // Set value of *K field (type []*J)
        vData.Field(i).Set(reflect.ValueOf(results))
    }

    return data, nil
}
```
