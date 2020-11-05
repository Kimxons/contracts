
// the configuration file 

const path = require("path");

module.exports = {
	contracts_build_directory: path.join(__dirname, "client/src/contracts"),
	networks: {
		development: {
			host: "127.0.0.1",
			port: 9545,
			network_id: "*" //to match ay network id
		}
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
