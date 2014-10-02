.class public interface abstract Lcom/viber/dexshared/ZXing$MultiFormatReader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract decodeWithState(Lcom/viber/dexshared/ZXing$BinaryBitmap;)Lcom/viber/dexshared/ZXing$Result;
.end method

.method public abstract reset()V
.end method

.method public abstract setHints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/viber/dexshared/ZXing$DecodeHintType;",
            "*>;)V"
        }
    .end annotation
.end method
