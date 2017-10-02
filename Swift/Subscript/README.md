##### Subscript Syntax #####

```
subscript(parameterList) -> ReturnType {
    get {
        // return someValue of ReturnType
    }

    set {
        // set someValue of ReturnType to newValue
    }
}
```

__Note__

Subscripts may have variadic parameters, but can't use `inout` or default parameters
and can't throw errors.

The setter is optional, so the subscript can be either read-write or read-only.
