.class Lcom/viber/voip/contacts/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/t;


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/viber/voip/contacts/c/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/c;ILjava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d;->d:Lcom/viber/voip/contacts/c/c;

    iput p2, p0, Lcom/viber/voip/contacts/c/d;->b:I

    iput-object p3, p0, Lcom/viber/voip/contacts/c/d;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/c/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 637
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/viber/voip/messages/a/a;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 640
    iget v0, p0, Lcom/viber/voip/contacts/c/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/c/d;->a:I

    .line 643
    if-eqz p3, :cond_0

    .line 644
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_0
    iget v0, p0, Lcom/viber/voip/contacts/c/d;->a:I

    iget v1, p0, Lcom/viber/voip/contacts/c/d;->b:I

    if-lt v0, v1, :cond_1

    .line 649
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d;->d:Lcom/viber/voip/contacts/c/c;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/c;->b:Lcom/viber/voip/contacts/c/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/c/d;->d:Lcom/viber/voip/contacts/c/c;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/c;->b:Lcom/viber/voip/contacts/c/u;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/u;->a(Ljava/util/Map;)V

    .line 651
    :cond_1
    return-void
.end method
