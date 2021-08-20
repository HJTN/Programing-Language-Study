class Employee {

    constructor(
        private _fullName: string,
        private _age: number,
        private _jobTitle: string,
        private _hourlyRate: number,
        public workingHoursPerWeek: number) {
        
    }

    get fullName() {
        return this._fullName;
    }

    set fullName(value: string) {
        this._fullName = value;
    }

    printEmployeeDetails = (): void => {
        console.log(`${this._fullName}'s job is ${this._jobTitle} and revenue of a week is ${this._hourlyRate * this.workingHoursPerWeek}$`);
    }
}

let employee1 = new Employee('Minsu', 28, 'Junior Developer', 40, 35);
employee1.fullName = 'Henry';
console.log(employee1.fullName);
employee1.printEmployeeDetails();

