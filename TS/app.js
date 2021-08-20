var Employee = /** @class */ (function () {
    function Employee() {
        var _this = this;
        this.printEmployeeDetails = function () {
            console.log(_this.fullName + "\uFFFD\uFFFD \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD " + _this.jobTitle + "\uFFFD\u0330\uFFFD \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\n        " + _this.hourlyRate * _this.workingHoursPerWeek + "\uFFFD\u07B7\uFFFD \uFFFD\u0334\uFFFD.");
        };
    }
    return Employee;
}());
var employee1 = new Employee();
employee1.printEmployeeDetails();
