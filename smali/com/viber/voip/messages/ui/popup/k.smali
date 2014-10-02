.class Lcom/viber/voip/messages/ui/popup/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/k;->b:I

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/k;->d:Z

    .line 803
    new-instance v0, Lcom/viber/voip/messages/ui/popup/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/l;-><init>(Lcom/viber/voip/messages/ui/popup/k;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->e:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/viber/voip/messages/ui/popup/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/m;-><init>(Lcom/viber/voip/messages/ui/popup/k;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/ui/popup/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/popup/k;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 823
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleUserIsTyping(Ljava/lang/String;Z)Z

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleGroupUserIsTyping(JZ)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/k;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/k;->b()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 834
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 835
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/k;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/popup/k;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/k;->a()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 792
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 794
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 795
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/k;->d:Z

    if-eqz v0, :cond_1

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/k;->d:Z

    .line 801
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 766
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->r(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 767
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Z)Z

    .line 768
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->y:Lcom/viber/voip/a/ah;

    invoke-virtual {v1}, Lcom/viber/voip/a/ah;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->s(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 773
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->s(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 776
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/k;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 777
    iput v3, p0, Lcom/viber/voip/messages/ui/popup/k;->b:I

    .line 778
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    if-nez v0, :cond_2

    .line 779
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/popup/k;->c:Z

    .line 780
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/k;->a()V

    .line 781
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/k;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/k;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->q(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 788
    return-void
.end method
