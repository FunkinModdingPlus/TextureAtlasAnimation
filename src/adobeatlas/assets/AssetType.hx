package adobeatlas.assets;
import adobeatlas.textures.TextureAtlas;
import openfl.display.BitmapData;
import openfl.media.Sound;
import openfl.utils.ByteArray;

class AssetType
{
    
    public static inline var TEXTURE : String = "texture";
    public static inline var TEXTURE_ATLAS : String = "textureAtlas";
    public static inline var SOUND : String = "sound";
    public static inline var OBJECT : String = "object";
    public static inline var BYTE_ARRAY : String = "byteArray";
    public static inline var ASSET_MANAGER : String = "assetManager";

    public static function fromAsset(asset : Dynamic) : String
    {
        if (Std.isOfType(asset, BitmapData))
        {
            return TEXTURE;
        }
        else if (Std.isOfType(asset, TextureAtlas))
        {
            return TEXTURE_ATLAS;
        }
        else if (Std.isOfType(asset, Sound))
        {
            return SOUND;
        }
        else if (Std.isOfType(asset, ByteArrayData))
        {
            return BYTE_ARRAY;
        }
        else if (Std.isOfType(asset, AssetManager))
        {
            return ASSET_MANAGER;
        }
        else
        {
            return OBJECT;
        }
    }
}

