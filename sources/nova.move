module nova::nova {

    use sui::coin::{Self, TreasuryCap};

    /// Define the coin type (tag will be Coin<0xYOUR_ADDRESS::nova::NOVA>)
    public struct NOVA has drop {}

    #[allow(deprecated_usage)]
    fun init(witness: NOVA, ctx: &mut TxContext) {
        let (treasury, metadata) = coin::create_currency(
            witness,
            6,                // decimals
            b"NOVA",          // symbol
            b"Nova Coin",     // name
            b"",              // URL (can add link later)
            option::none(),   // optional icon
            ctx,
        );
        transfer::public_freeze_object(metadata);
        transfer::public_transfer(treasury, ctx.sender());
    }

    /// Mint NOVA coins
    public fun mint(
        treasury_cap: &mut TreasuryCap<NOVA>,
        amount: u64,
        recipient: address,
        ctx: &mut TxContext,
    ) {
        let coin = coin::mint(treasury_cap, amount, ctx);
        transfer::public_transfer(coin, recipient)
    }
}




