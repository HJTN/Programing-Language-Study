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
        console.log(`${this._fullName}의 직업은 ${this._jobTitle}이고 수익은 ${this._hourlyRate * this.workingHoursPerWeek}달러 이다.`);
    }
}

let employee1 = new Employee('Minsu', 28, 'Junior Developer', 40, 35);
employee1.fullName = 'Henry';
console.log(employee1.fullName);
employee1.printEmployeeDetails();

