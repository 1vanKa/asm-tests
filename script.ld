ENTRY(main)

SECTIONS
{
    . = 0x10000;
    .text : {
        *(.text)
        _etext = .;
    }
    . = 0x8000000;
    .rodata : {
        *(.rodata)
        _erodata = .;
    }
    .data : { *(.data) }
    .bss : { * (.bss) }
}