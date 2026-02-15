module Helper exposing (..)

import Html exposing (Html, div, li, text, ul)



-- PARTE 1 - FUNCIONES BÁSICAS


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Int -> Int -> Int -> Int
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y operation =
    operation x y



-- PARTE 2 - RECORD ProgrammingLanguage


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List ProgrammingLanguage
languages =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List ProgrammingLanguage -> List String
languageNames langs =
    List.map .name langs



-- PARTE 3 - RECORD User


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\user ->
            case .uType user of
                "Student" ->
                    .name user

                _ ->
                    ""
        )
        userList


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 500000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = False
      , downloads = 1000000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Pro"
    , brand = "Apple"
    , screenSize = "14"
    }


main : Html msg
main =
    div []
        [ div []
            [ ul []
                [ li [] [ text ("Ram: " ++ .ram myLaptop) ]
                , li [] [ text ("Modelo: " ++ .model myLaptop) ]
                , li [] [ text ("Marca: " ++ .brand myLaptop) ]
                , li [] [ text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
