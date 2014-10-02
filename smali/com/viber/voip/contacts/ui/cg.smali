.class Lcom/viber/voip/contacts/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cg;->b:Lcom/viber/voip/contacts/ui/cb;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cg;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 499
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 500
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cg;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v2, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cn;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    return-void
.end method
