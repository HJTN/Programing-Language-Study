int equal(treePointer first, treePointer second) {
    return ((!first && !second) || (first && second &&
            (first->data == second->data) &&
            equal(first->leftChild,second->leftChild) &&
            equal(first->rightChild,second->rightChild)))
}