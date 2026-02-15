module Helper exposing (..)


-- =====================================
-- PARTE 1 - FUNCIONES BÁSICAS (Float)
-- =====================================

add2 : Float -> Float -> Float
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Float -> Float -> (Float -> Float -> Float) -> Float
calc x y operation =
    operation x y



-- =====================================
-- RECORD ProgrammingLanguage
-- =====================================

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



-- =====================================
-- RECORD User
-- =====================================

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



-- =====================================
-- RECORD Videogame
-- =====================================

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



-- =====================================
-- RECORD Computer
-- =====================================

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
