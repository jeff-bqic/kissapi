# Purpose

KISS API is for lazy programmers who are bored of writing REST API/OpenAPI specifications with endless repetitions. OpenAPI is great and there are plenty of tools to generate libraries and code stubs and skeletons from the specification. But it is overloaded with self-evident syntax and semantics. Many programming languages have shown how to define types, classes and interfaces in a concise and easy-to-read form without going insane. OpenAPI while using JSON Schemas is the opposite of that.

KISS API is intented to specify REST APIs as easy as possible with as less syntactical and semantical restrictions as possible.

So, the very simple KISS API

    @types <types/simple_types.kapi>
    @types <types/class_types.kapi>

    api: VerySimple
    {
        prolog
        {
            kissapi: 1.0
            title: Very Simple API
            version: 1.0

            license:
            {
                name: Copyright by kissapi
                url: https://www.kissapi.de/
            }

            contact:
            {
                name: Hugo Hacker
                email: hugohacker@kissapi.de
            }

            description: 'My Very Simple API'

            servers
            [
                'https://api.kissapi.de/api/v1',
                'https://verysimple.api.kissapi.de/api/v1'
                'https://127.0.0.1/verysimpleapi/v1'
            ]
        }

        user
        {
            description: my simple user service

            security: [ bearer ]

            {user} {}
        }
    }

generates a full-blown REST API with all endpoints, requests and responses to manipulate users including pagination, searching and ordering for user lists.

The full specification of KISS API you can find at [https://kissapi.de](https://kissapi.de).

