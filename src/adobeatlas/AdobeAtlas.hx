package adobeatlas;
import haxe.Json;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
/**
 * an atlas for.... adobe  :) generated from jsosn
 * 
 * thank you starling man
 */
@:access(FlxAtlasFrames)
class AdobeAtlas extends FlxAtlasFrames {
    public static function fromAdobeAtlas(source:FlxGraphic, description:String) {
        var parsedJson = Json.parse(description);
        var sprites = parsedJson.ATLAS.SPRITES;
        var stinkyAdobeAtlas = new AdobeAtlas(source);
        for (sprite in sprites) {
            var speete = sprite.SPRITE;
            FlxAtlasFrames.texturePackerHelper(speete.name, {sourceSize: {w: speete.w, h: speete.h}, spriteSourceSize: {x: speete.x, y: speete.y}, rotated: speete.rotated}, stinkyAdobeAtlas);
        }
        // did i do it?
        return stinkyAdobeAtlas;
    }
}