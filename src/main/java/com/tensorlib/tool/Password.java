package com.tensorlib.tool;

public class Password {

	public static String encrypt(String pwssword) {

		return StringReversal.leftMoveIndex(MD5.md5Password(MD5.md5Password(pwssword)), 8);

	}

}
