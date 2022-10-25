class Crypto {
  String id;
  String name;
  String description;
  double price;
  double total_supply;
  double circulating_supply;
  double market_cap;
  String assetImage;

  Crypto(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.total_supply,
      required this.circulating_supply,
      required this.market_cap,
      required this.assetImage});
}

var listCrypto = [
  Crypto(
    id: "USDT",
    name: "Tether",
    description:
        "Launched in 2014, Tether is a blockchain-enabled platform designed to facilitate the use of fiat currencies in a digital manner. Tether works to disrupt the conventional financial system via a more modern approach to money. Tether has made headway by giving customers the ability to transact with traditional currencies across the blockchain, without the inherent volatility and complexity typically associated with a digital currency. As the first blockchain-enabled platform to facilitate the digital use of traditional currencies (a familiar, stable accounting unit), Tether has democratised cross-border transactions across the blockchain.",
    price: 1.000617,
    total_supply: 6847.316,
    circulating_supply: 68.316,
    market_cap: 6847.0682,
    assetImage: 'https://cryptologos.cc/logos/thumbs/tether.png?v=022',
  ),
  Crypto(
    id: "BTC",
    name: "Bitcoin",
    description:
        "Bitcoin uses peer-to-peer technology to operate with no central authority or banks; managing transactions and the issuing of bitcoins is carried out collectively by the network.\r\nBitcoin is open-source; its design is public, nobody owns or controls Bitcoin and everyone can take part. Through many of its unique properties, Bitcoin allows exciting uses that could not be covered by any previous payment system.",
    price: 19338.675,
    total_supply: 19183,
    circulating_supply: 19188743,
    market_cap: 371084.5251,
    assetImage: 'https://cryptologos.cc/logos/thumbs/bitcoin.png?v=022',
  ),
  Crypto(
    id: "BUSD",
    name: "Binance USD",
    description:
        "Binance USD (BUSD) is a new USD-denominated stablecoin approved by the New York State Department of Financial Services (NYDFS) that will be launched in partnership with Paxos and Binance.\r\nThese are digitised US Dollars and are always purchased and redeemed at 1 BUSD for 1 US dollar.\r\nBinance and Paxos don’t charge a fee for the purchase or redemption of Binance USD (BUSD) However bank charges/wire fees may apply.\r\nSupported on both ERC-20 and BEP-2; transfer your dollars anywhere in minutes, with low cost and on the blockchain.",
    price: 1.0005,
    total_supply: 21772.44,
    circulating_supply: 2177212.44,
    market_cap: 21783.6216,
    assetImage: 'https://cryptologos.cc/logos/thumbs/binance-usd.png?v=022',
  ),
  Crypto(
    id: "ETH",
    name: "Ethereum",
    description:
        "Ethereum is a platform powered by blockchain technology that is best known for its native cryptocurrency, called Ether, or ETH, or simply Ethereum. The distributed nature of blockchain technology is what makes the Ethereum platform secure, and that security enables ETH to accrue value.\r\nThe Ethereum platform supports Ether in addition to a network of decentralized apps, otherwise known as dApps. Smart contracts, which originated on the Ethereum platform, are a central component of how the platform operates. Many decentralized finance (DeFi) and other applications use smart contracts in conjunction with blockchain technology.",
    price: 1346.418,
    total_supply: 12237386.98,
    circulating_supply: 12237.499,
    market_cap: 1647664.3343,
    assetImage: 'https://cryptologos.cc/logos/thumbs/ethereum.png?v=022',
  ),
  Crypto(
    id: "XRP",
    name: "Ripple",
    description:
        "XRP is a digital asset built for payments. It is the native digital asset on the XRP Ledger—an open-source, permissionless and decentralized blockchain technology that can settle transactions in 3-5 seconds.\r\nXRP can be sent directly without needing a central intermediary, making it a convenient instrument in bridging two different currencies quickly and efficiently.",
    price: 0.4503443,
    total_supply: 4988701,
    circulating_supply: 4988701,
    market_cap: 22466.237125,
    assetImage: 'https://cryptologos.cc/logos/thumbs/xrp.png?v=022',
  ),
  Crypto(
    id: "MATIC",
    name: "Matic Network",
    description:
        "Polygon (MATIC) is an Ethereum token that powers the Polygon Network, a scaling solution for Ethereum. Polygon aims to provide faster and cheaper transactions on Ethereum using Layer 2 sidechains, which are blockchains that run alongside the Ethereum main chain. Users can deposit Ethereum tokens to a Polygon smart contract, interact with them within Polygon, and then later withdraw them back to the Ethereum main chain. The MATIC token is used to pay transaction fees and participate in proof-of-stake consensus.",
    price: 0.89382105,
    total_supply: 10000,
    circulating_supply: 8827.28493,
    market_cap: 78904.759769,
    assetImage: 'https://cryptologos.cc/logos/thumbs/polygon.png?v=022',
  ),
  Crypto(
    id: "SOL",
    name: "Solana",
    description:
        "Solana is the fastest blockchain in the world and the fastest growing ecosystem in crypto, with over 400 projects spanning DeFi, NFTs, Web3 and more.",
    price: 28.47436025,
    total_supply: 5319.877156,
    circulating_supply: 358516.647,
    market_cap: 10208.850048,
    assetImage: 'https://cryptologos.cc/logos/thumbs/solana.png?v=022',
  )
];
