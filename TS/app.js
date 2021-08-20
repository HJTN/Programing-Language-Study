var sendGreeting = function (message, userName) {
    if (message === void 0) { message = 'Hello'; }
    if (userName === void 0) { userName = 'there'; }
    return console.log(message + ", " + userName);
};
sendGreeting();
sendGreeting('Good morning');
sendGreeting('Good morning', 'JinSu');
