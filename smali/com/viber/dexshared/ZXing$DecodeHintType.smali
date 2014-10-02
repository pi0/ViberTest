.class public final enum Lcom/viber/dexshared/ZXing$DecodeHintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/dexshared/ZXing$DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum OTHER:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/viber/dexshared/ZXing$DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/viber/dexshared/ZXing$DecodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->OTHER:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 22
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "PURE_BARCODE"

    invoke-direct {v0, v1, v4}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->PURE_BARCODE:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 23
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "POSSIBLE_FORMATS"

    invoke-direct {v0, v1, v5}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->POSSIBLE_FORMATS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 24
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "TRY_HARDER"

    invoke-direct {v0, v1, v6}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->TRY_HARDER:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 25
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v7}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->CHARACTER_SET:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 26
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->ALLOWED_LENGTHS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 27
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 28
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "ASSUME_GS1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->ASSUME_GS1:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 29
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "RETURN_CODABAR_START_END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->RETURN_CODABAR_START_END:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 30
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "NEED_RESULT_POINT_CALLBACK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 31
    new-instance v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    const-string/jumbo v1, "ALLOWED_EAN_EXTENSIONS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/viber/dexshared/ZXing$DecodeHintType;

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->OTHER:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->PURE_BARCODE:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->POSSIBLE_FORMATS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->TRY_HARDER:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->CHARACTER_SET:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->ALLOWED_LENGTHS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->ASSUME_GS1:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->RETURN_CODABAR_START_END:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/viber/dexshared/ZXing$DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->$VALUES:[Lcom/viber/dexshared/ZXing$DecodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/dexshared/ZXing$DecodeHintType;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/ZXing$DecodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/viber/dexshared/ZXing$DecodeHintType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/viber/dexshared/ZXing$DecodeHintType;->$VALUES:[Lcom/viber/dexshared/ZXing$DecodeHintType;

    invoke-virtual {v0}, [Lcom/viber/dexshared/ZXing$DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/dexshared/ZXing$DecodeHintType;

    return-object v0
.end method
