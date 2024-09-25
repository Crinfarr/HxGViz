package gviz.helpers;

import haxe.Exception;
import haxe.io.Bytes;
import haxe.crypto.Sha1;

using StringTools;

class UUID {
	public static var v4(get, never):String;
	private static final uuidregex = ~/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/gmi;

	static function get_v4():String {
		return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.split('').map((str) -> {
			return switch (str) {
				case 'y':
					(Math.floor(Math.random() * 16) & 0x3).hex(1);
				case 'x':
					Math.floor(Math.random() * 16).hex();
				default:
					return str;
			}
		}).join('').toLowerCase();
	}

	public static function v5(namespace:String, name:Null<String>) {
		if (!uuidregex.match(namespace))
			throw new Exception("Invalid namespace uuid " + namespace);
		if (name == null)
			name = v4;
		final sha1 = Sha1.make(Bytes.ofString('$namespace$name'));
		sha1.set(12, (sha1.get(12) & 63) | 128);
        
        final nfstr = sha1.toHex();
		return '${nfstr.substr(0, 8)}-${nfstr.substr(8, 4)}-5${nfstr.substr(13, 3)}-${nfstr.substr(16, 4)}-${nfstr.substr(20, 12)}';
	}
}
