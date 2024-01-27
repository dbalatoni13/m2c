enum my_enum array[4] = { THREE, TWO_TOO, TWO_TOO, ZERO }; /* const */

enum my_enum test(enum my_enum x) {
    switch (x) {                                    /* irregular */
    case ZERO:
        return array->unk0;
    case TWO_TOO:
        return array[1];
    case THREE:
        return array[2];
    default:
        return ZERO;
    }
}
