#include <linux/module.h>
#include <linux/kernel.h>

static int __init beginfct(void) {
	printk(KERN_INFO"Hello world!\n");
	return 0;
}

static void __exit endfct(void) {
	printk(KERN_INFO"Goodbye world!\n");
}

module_init(beginfct);
module_exit(endfct);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Matt Lo");
MODULE_DESCRIPTION("KHello World");

