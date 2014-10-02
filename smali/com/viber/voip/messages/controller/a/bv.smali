.class Lcom/viber/voip/messages/controller/a/bv;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/br;

.field private b:Ljava/lang/Runnable;

.field private final c:Lcom/viber/voip/messages/controller/do;

.field private d:Landroid/os/Handler;

.field private e:Lcom/viber/jni/PhoneControllerWrapper;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/jni/CGetUserDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/br;Lcom/viber/voip/messages/controller/do;[Ljava/lang/String;Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bv;->a:Lcom/viber/voip/messages/controller/a/br;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->d:Landroid/os/Handler;

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->f:Ljava/util/Set;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->g:Ljava/util/List;

    .line 209
    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/bv;->c:Lcom/viber/voip/messages/controller/do;

    .line 210
    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/bv;->e:Lcom/viber/jni/PhoneControllerWrapper;

    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->e:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 212
    new-instance v0, Lcom/viber/voip/messages/controller/a/bw;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/a/bw;-><init>(Lcom/viber/voip/messages/controller/a/bv;Lcom/viber/voip/messages/controller/a/br;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->b:Ljava/lang/Runnable;

    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/bv;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/bv;)Lcom/viber/jni/PhoneControllerWrapper;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->e:Lcom/viber/jni/PhoneControllerWrapper;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/a/bv;)Lcom/viber/voip/messages/controller/do;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->c:Lcom/viber/voip/messages/controller/do;

    return-object v0
.end method


# virtual methods
.method public onGetUsersDetail([Lcom/viber/jni/CGetUserDetails;)V
    .locals 5
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->a:Lcom/viber/voip/messages/controller/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SyncUserInfoManager.onGetUsersDetail users.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", users = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/a/br;->a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V

    .line 226
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 227
    if-eqz v2, :cond_0

    .line 228
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/bv;->f:Ljava/util/Set;

    iget-object v4, v2, Lcom/viber/jni/CGetUserDetails;->OriginalPhoneNumber:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/bv;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/bv;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->e:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 237
    array-length v0, p1

    if-lez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->c:Lcom/viber/voip/messages/controller/do;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/controller/do;->a([Lcom/viber/jni/CGetUserDetails;)V

    .line 243
    :cond_2
    :goto_1
    return-void

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bv;->c:Lcom/viber/voip/messages/controller/do;

    invoke-interface {v0}, Lcom/viber/voip/messages/controller/do;->a()V

    goto :goto_1
.end method
