.class public Lcom/viber/voip/contacts/a/x;
.super Lcom/viber/voip/contacts/a/k;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dg;


# static fields
.field public static i:J

.field private static final j:Ljava/lang/String;

.field private static l:Lcom/viber/voip/contacts/a;


# instance fields
.field private k:Lcom/viber/voip/messages/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, -0x2

    sput-wide v0, Lcom/viber/voip/contacts/a/x;->i:J

    .line 27
    const-class v0, Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/x;->j:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/viber/voip/contacts/a/y;

    invoke-direct {v0}, Lcom/viber/voip/contacts/a/y;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/a/x;->l:Lcom/viber/voip/contacts/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/i;Lcom/viber/voip/contacts/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p3}, Lcom/viber/voip/contacts/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 33
    iput-object p2, p0, Lcom/viber/voip/contacts/a/x;->k:Lcom/viber/voip/messages/i;

    .line 34
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/x;->d()Z

    .line 35
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    iget-object v0, p0, Lcom/viber/voip/contacts/a/x;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v0}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/viber/voip/contacts/a/x;->c:Landroid/app/Activity;

    const v2, 0x7f0c053c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 62
    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/a/x;->c:Landroid/app/Activity;

    const v1, 0x7f0c05bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 66
    iput-boolean v5, v0, Lcom/viber/voip/contacts/a/l;->q:Z

    .line 67
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 69
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 76
    invoke-virtual {v0, v5}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 77
    invoke-virtual {v0, v5}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 78
    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->b(Ljava/lang/String;)V

    .line 80
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/a/x;->c:Landroid/app/Activity;

    const v3, 0x7f0c05be

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/x;->e()V

    return-void
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/x;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/e;

    .line 88
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/b/b/e;->a(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/e;->b()Landroid/net/Uri;

    move-result-object v4

    if-ne v2, v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/e;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/e;->a()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 96
    :cond_2
    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/b/b/e;->h(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/b/b/e;->a(Landroid/net/Uri;)V

    .line 99
    return v1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/x;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/contacts/b/e;
    .locals 1
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/viber/voip/contacts/a/x;->l:Lcom/viber/voip/contacts/a;

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/contacts/a/x;->k:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 104
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/x;->e()V

    .line 105
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/contacts/a/x;->k:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 109
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-boolean v1, p0, Lcom/viber/voip/contacts/a/x;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/a/x;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v1}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/a/x;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v1}, Lcom/viber/voip/contacts/a;->d_()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/viber/voip/contacts/a/x;->l:Lcom/viber/voip/contacts/a;

    invoke-interface {v0}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/x;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-wide v0, Lcom/viber/voip/contacts/a/x;->i:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/viber/voip/contacts/a/x;->a(Landroid/view/View;I)V

    .line 51
    return-object v0
.end method

.method public onChange(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public onChangeOwner()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/a/aa;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/a/aa;-><init>(Lcom/viber/voip/contacts/a/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public onInitCache()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onNewInfo(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method
