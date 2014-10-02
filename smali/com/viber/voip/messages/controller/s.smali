.class Lcom/viber/voip/messages/controller/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/messages/controller/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/r;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/messages/controller/s;->c:Lcom/viber/voip/messages/controller/r;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/s;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/s;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/controller/s;->c:Lcom/viber/voip/messages/controller/r;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/r;->a(Lcom/viber/voip/messages/controller/r;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/s;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    .line 239
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getAddressString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setAddressString(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/viber/voip/messages/controller/s;->c:Lcom/viber/voip/messages/controller/r;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/r;->a(Lcom/viber/voip/messages/controller/r;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/controller/s;->c:Lcom/viber/voip/messages/controller/r;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/r;->b(Lcom/viber/voip/messages/controller/r;)Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/s;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 245
    :cond_1
    return-void
.end method
