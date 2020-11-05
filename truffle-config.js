
// the configuration file 

const path = require("path");

module.exports = {
	contracts_directory: path.join(__dirname, "contracts"),
	migratins_directory: path.join(__dirname, "migrations"),
	contracts_build_directory: path.join(__dirname, "client/src/contracts"),
	networks: {
		development: {
			host: "127.0.0.1",
			port: 9545,
			network_id: "*", //to match ay network id
			websockets: true
		},
		live: {
			host: "*", 
			port: 8080,
			network_id: 1
		},
		etherscan: {
			apikey: "AW9BDBGDU3KF469TM1SG25D7XNWJTF98I5"
		},
		sourceFetchers: ["sourcify", "etherscan"]
	}
};

// module.exports = {
//   //http://truffleframework.com/docs/advanced/configuration
//   contracts_build_directory: path.join(__dirname, "client/src/contracts"),
//   networks: {
//     develop: {
//       port: 8545
//     }
//   }
// };
