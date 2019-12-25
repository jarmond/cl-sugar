# CL-SUGAR

Syntactic sugar for Common Lisp inspired by modern languages.

## Usage

    (ql:quickload "cl-sugar")
    (cl-sugar:enable-vector-reader)
    [2 3 5 7]

> #(2 3 5 7)

    (cl-sugar:enable-hash-table-reader)
    {(:a 1) (:b 2) (:c 3)}

> #<HASH-TABLE :TEST EQL :COUNT 3 {1003AB4B83}>

## Dependencies

- Alexandria

## Todo

- Use named readtables

## License

This software is licensed under the permissive MIT license.
Copyright (c) 2019 Jonathan Armond.
