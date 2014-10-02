.class Lcom/viber/voip/settings/i;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/viber/voip/settings/i;->a:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 276
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viber/voip/settings/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method
