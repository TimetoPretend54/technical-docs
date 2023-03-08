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
