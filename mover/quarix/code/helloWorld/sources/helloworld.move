module helloworld::helloworld {
    use std::ascii::{String, string};
    use sui::object::{Self,UID};
    use sui::transfer::transfer;
    use sui::tx_context::{TxContext, sender};

    public struct Hello has key{
        id:UID,
        say: String
    }

    fun init(ctx: &mut TxContext) {
        let hello_world = Hello {
            id:object::new(ctx),
            say: string(b"drink SUI"),
        };
        transfer(hello_world, sender(ctx));
    }
}
