var itemPrice;
var setItemPrice = function (price) {
    if (typeof price === 'string') { // price Ÿ���� string�� ���
        itemPrice = 0;
    }
    else {
        itemPrice = price;
    }
};
setItemPrice(50);
