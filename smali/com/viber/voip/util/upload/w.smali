.class final Lcom/viber/voip/util/upload/w;
.super Lcom/viber/voip/util/upload/ab;
.source "SourceFile"


# instance fields
.field final synthetic i:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p7, p0, Lcom/viber/voip/util/upload/w;->i:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iput-object p8, p0, Lcom/viber/voip/util/upload/w;->j:Ljava/lang/String;

    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/util/upload/ab;-><init>(Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/util/upload/w;->i:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/viber/voip/util/upload/w;->j:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    :cond_0
    return-void
.end method
