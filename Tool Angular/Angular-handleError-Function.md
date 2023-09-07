# Angular - Example `handleError` Function for Angular http Service

```typescript
import { ... } from '...'
...

@Injectible({
    providedIn: 'root'
})
export class MyService {
    private readonly myServiceUrl = '/api/v1/myservice'
    private httpOptions = {
        headers: new HttpHeaders({ 'Content-Type': 'application/json'})
        params: new HttpParams()
    }

    constructor(private http: HttpClient) {}

    public getMyServiceData(): Observable<myServiceData> {
        return this.http.get<myServiceData>(this.myServiceUrl, this.httpOptions)
            .pipe(catchError(this.handleError));
    }

    private handleError(err: HttpErrorResponse) {
        if (error.error instanceof ErrorEvent) { 
            // client-side or network error
            console.error('An error occurred:', error.error.message);
        } else {
            console.error(
                `Returned code ${error.status}, ` +
                `message: ${error.message}, ` +
                `body: ${error.error}`);
        }
        if (error.status == 401) {
            location.reload();
        }
        return throwError(
            () => new Error('An error has occurred; please try again later.')
        )
    }
}
```