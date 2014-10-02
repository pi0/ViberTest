.class Lcom/viber/voip/messages/controller/cd;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/viber/voip/messages/controller/aj;

.field final synthetic d:Lcom/viber/voip/messages/controller/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/by;ILjava/util/ArrayList;Lcom/viber/voip/messages/controller/aj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cd;->d:Lcom/viber/voip/messages/controller/by;

    iput p2, p0, Lcom/viber/voip/messages/controller/cd;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/controller/cd;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/viber/voip/messages/controller/cd;->c:Lcom/viber/voip/messages/controller/aj;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchPublicGroups(I[Lcom/viber/jni/PublicGroupInfo;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    iget v0, p0, Lcom/viber/voip/messages/controller/cd;->a:I

    if-ne v0, p1, :cond_1

    .line 503
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 505
    if-nez p3, :cond_1

    .line 506
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 507
    iget-object v3, p0, Lcom/viber/voip/messages/controller/cd;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cd;->c:Lcom/viber/voip/messages/controller/aj;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/aj;->a(Ljava/util/ArrayList;)V

    .line 512
    :cond_1
    return-void
.end method
