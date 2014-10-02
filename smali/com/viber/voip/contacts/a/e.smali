.class Lcom/viber/voip/contacts/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/database/Cursor;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Lcom/viber/provider/a;

.field protected c:I


# direct methods
.method public constructor <init>(Lcom/viber/provider/a;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    .line 28
    iput-object p1, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    .line 29
    return-void
.end method

.method private a()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/a/e;->a:Z

    .line 190
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v0}, Lcom/viber/provider/a;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getType(I)I
    .locals 1
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    iget-object v1, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v1}, Lcom/viber/provider/a;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/viber/voip/contacts/a/e;->a:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    iget-object v1, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v1}, Lcom/viber/provider/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public move(I)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/e;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v0}, Lcom/viber/provider/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/a/e;->c:I

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/e;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v1}, Lcom/viber/provider/a;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/viber/voip/contacts/a/e;->b:Lcom/viber/provider/a;

    invoke-interface {v1}, Lcom/viber/provider/a;->getCount()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/a/e;->c:I

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    if-gez p1, :cond_1

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/viber/voip/contacts/a/e;->c:I

    goto :goto_0

    .line 55
    :cond_1
    iput p1, p0, Lcom/viber/voip/contacts/a/e;->c:I

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/e;->move(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/e;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
