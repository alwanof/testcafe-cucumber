require('dotenv').config();
const axios = require('axios');

(async () => {
    // get token
    const key = JSON.stringify({
        "client_id": process.env.CLIENT_ID,
        "client_secret": process.env.CLIENT_SECRET,
    });
    let token;
    await axios.post('https://xray.cloud.getxray.app/api/v2/authenticate', key, {
        headers: {
            'Content-Type': 'application/json'
        }
    }).then((res) => {
        token = res.data;
    }).catch((err) => {

        console.error(err);

    });

    // push to server
    const jsonFile = require('./reports/report.json');
    const data = JSON.stringify(jsonFile);

    axios.post('https://xray.cloud.getxray.app/api/v2/import/execution/cucumber', data, {
        headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ' + token
        }
    }).then((res) => {
        console.log(`Status: ${res.status}`);
        console.log('Body: ', res.data);
    }).catch((err) => {
        console.error(err);
    });


})();

