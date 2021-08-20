type StringOrNum = string | number;
let itemPrice: number;

const setItemPrice = (price: StringOrNum): void => {
    if (typeof price === 'string') {    // price 타입이 string일 경우
        itemPrice = 0;
    }
    else {
        itemPrice = price;
    }
    
};

setItemPrice(50);