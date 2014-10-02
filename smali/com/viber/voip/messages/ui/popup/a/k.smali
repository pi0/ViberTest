.class public Lcom/viber/voip/messages/ui/popup/a/k;
.super Lcom/viber/voip/messages/ui/popup/a/i;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseBooleanArray;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/popup/a/i;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V

    .line 23
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->a:Landroid/util/SparseBooleanArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->b:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->c:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->d:Z

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/k;->b()Z

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->d:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 119
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getCachedOnlineContactInfo([Ljava/lang/String;)[Lcom/viber/jni/OnlineContactInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 109
    aget-object v0, v0, v3

    .line 118
    :goto_1
    const/4 v1, 0x3

    const-string/jumbo v2, "TitleViewCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastOnlineInfo number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",cachedOnlineContactInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    .line 114
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/lastonline/LastOnlineController;->handleGetLastOnline([Ljava/lang/String;IIJ)Z

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/conversation/an;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/k;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 41
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c07c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->aa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/ui/popup/a/k;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/k;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/ui/popup/a/k;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const v1, 0x7f0700ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0702ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    const v3, 0x7f07024d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    const v4, 0x7f0702af

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    if-eqz v5, :cond_1

    .line 71
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/popup/a/k;->a(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-boolean v0, v3, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    iget-wide v2, v3, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-static {v0, v2, v3}, Lcom/viber/voip/util/w;->a(ZJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/k;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    .line 81
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
