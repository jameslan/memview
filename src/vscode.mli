type disposableLike = <
    dispose : unit -> unit
>
type extensionContext = {
  subscription : disposableLike array
}

type param
val registerCommand: string -> disposableLike
