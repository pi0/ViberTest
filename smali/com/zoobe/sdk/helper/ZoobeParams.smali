.class public Lcom/zoobe/sdk/helper/ZoobeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public gaTrackingKey:Ljava/lang/String;

.field public iabKey:Ljava/lang/String;

.field public isGATenabled:Z

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public skipPreview:Z

.field public testingMode:Z

.field public thumbHeight:I

.field public thumbWidth:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/zoobe/sdk/helper/ZoobeParams;->thumbWidth:I

    .line 18
    iput v1, p0, Lcom/zoobe/sdk/helper/ZoobeParams;->thumbHeight:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoobe/sdk/helper/ZoobeParams;->isGATenabled:Z

    .line 20
    iput-boolean v1, p0, Lcom/zoobe/sdk/helper/ZoobeParams;->testingMode:Z

    return-void
.end method
