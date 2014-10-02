.class public Lcom/viber/voip/messages/conversation/ag;
.super Lcom/viber/voip/messages/conversation/an;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:I

.field public static final c:I

.field public static final d:I


# instance fields
.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/viber/voip/messages/conversation/ag;->b:I

    .line 17
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ag;->c:I

    .line 18
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/viber/voip/messages/conversation/ag;->d:I

    .line 21
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ag;->b:I

    const-string/jumbo v2, "messages.message_global_id"

    aput-object v2, v0, v1

    .line 23
    sget-object v0, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ag;->c:I

    const-string/jumbo v2, "public_messages_extras.liked"

    aput-object v2, v0, v1

    .line 24
    sget-object v0, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ag;->d:I

    const-string/jumbo v2, "public_messages_extras.likes_count"

    aput-object v2, v0, v1

    .line 26
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    sget-object v1, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Landroid/database/Cursor;)V

    .line 35
    invoke-static {p0, p1}, Lcom/viber/voip/messages/conversation/ag;->a(Lcom/viber/voip/messages/conversation/ag;Landroid/database/Cursor;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 40
    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->f:I

    .line 41
    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->g:I

    .line 42
    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->h:I

    .line 43
    return-void
.end method

.method private static a(Lcom/viber/voip/messages/conversation/ag;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/viber/voip/messages/conversation/ag;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->f:I

    .line 47
    sget v0, Lcom/viber/voip/messages/conversation/ag;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->g:I

    .line 48
    sget v0, Lcom/viber/voip/messages/conversation/ag;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ag;->h:I

    .line 49
    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/viber/voip/messages/conversation/ag;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExtraMessageLoaderEntity{messageGlobalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ag;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", liked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ag;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ag;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/an;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
