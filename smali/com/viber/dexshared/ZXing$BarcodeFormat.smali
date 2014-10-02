.class public final enum Lcom/viber/dexshared/ZXing$BarcodeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/dexshared/ZXing$BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum AZTEC:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum CODABAR:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum CODE_128:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum CODE_39:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum CODE_93:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum EAN_13:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum EAN_8:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum ITF:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum MAXICODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum PDF_417:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum QR_CODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum RSS_14:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum RSS_EXPANDED:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum UPC_A:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum UPC_E:Lcom/viber/dexshared/ZXing$BarcodeFormat;

.field public static final enum UPC_EAN_EXTENSION:Lcom/viber/dexshared/ZXing$BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "AZTEC"

    invoke-direct {v0, v1, v3}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->AZTEC:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 36
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "CODABAR"

    invoke-direct {v0, v1, v4}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODABAR:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 37
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "CODE_39"

    invoke-direct {v0, v1, v5}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_39:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 38
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "CODE_93"

    invoke-direct {v0, v1, v6}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_93:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 39
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "CODE_128"

    invoke-direct {v0, v1, v7}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_128:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 40
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "DATA_MATRIX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->DATA_MATRIX:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 41
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "EAN_8"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->EAN_8:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 42
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "EAN_13"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->EAN_13:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 43
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "ITF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->ITF:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 44
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "MAXICODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->MAXICODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 45
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "PDF_417"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->PDF_417:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 46
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "QR_CODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->QR_CODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 47
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "RSS_14"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->RSS_14:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 48
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "RSS_EXPANDED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->RSS_EXPANDED:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 49
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "UPC_A"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_A:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 50
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "UPC_E"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_E:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 51
    new-instance v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    const-string/jumbo v1, "UPC_EAN_EXTENSION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/viber/dexshared/ZXing$BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/viber/dexshared/ZXing$BarcodeFormat;

    sget-object v1, Lcom/viber/dexshared/ZXing$BarcodeFormat;->AZTEC:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODABAR:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_39:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_93:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/dexshared/ZXing$BarcodeFormat;->CODE_128:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->DATA_MATRIX:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->EAN_8:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->EAN_13:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->ITF:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->MAXICODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->PDF_417:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->QR_CODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->RSS_14:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->RSS_EXPANDED:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_A:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_E:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->$VALUES:[Lcom/viber/dexshared/ZXing$BarcodeFormat;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/dexshared/ZXing$BarcodeFormat;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;

    return-object v0
.end method

.method public static values()[Lcom/viber/dexshared/ZXing$BarcodeFormat;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/dexshared/ZXing$BarcodeFormat;->$VALUES:[Lcom/viber/dexshared/ZXing$BarcodeFormat;

    invoke-virtual {v0}, [Lcom/viber/dexshared/ZXing$BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/dexshared/ZXing$BarcodeFormat;

    return-object v0
.end method
