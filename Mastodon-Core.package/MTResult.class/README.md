A MTResult is a wrapper for return values that can be used when it's possible that an error will be returned.
The result can be tested with isError and isSuccess, and either possibility can be accessed by calling the error or value methods.
Using the unsafe unwrap method will return the value or raise an error.