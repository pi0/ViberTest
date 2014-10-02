.class public abstract Lcom/viber/voip/calls/ui/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/LayoutInflater;

.field protected final c:Lcom/viber/voip/calls/ui/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/calls/ui/q",
            "<TT;>.com/viber/voip/calls/ui/t;"
        }
    .end annotation
.end field

.field protected final d:Lcom/viber/voip/messages/orm/service/EntityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final e:Landroid/content/res/ColorStateList;

.field protected final f:Landroid/content/res/ColorStateList;

.field protected g:Lcom/viber/voip/util/b/w;

.field protected h:Lcom/viber/voip/util/b/x;

.field protected i:Z

.field protected j:Landroid/content/res/Resources;

.field protected k:Z

.field protected l:Lcom/viber/voip/calls/ui/r;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/viber/voip/calls/ui/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/ui/q;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/messages/orm/service/EntityService;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/calls/ui/PhoneFragment;",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7f0202ca

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->b:Landroid/view/LayoutInflater;

    .line 75
    iput-object p2, p0, Lcom/viber/voip/calls/ui/q;->d:Lcom/viber/voip/messages/orm/service/EntityService;

    .line 76
    new-instance v0, Lcom/viber/voip/calls/ui/t;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/calls/ui/t;-><init>(Lcom/viber/voip/calls/ui/q;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->c:Lcom/viber/voip/calls/ui/t;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->f:Landroid/content/res/ColorStateList;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->e:Landroid/content/res/ColorStateList;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->g:Lcom/viber/voip/util/b/w;

    .line 81
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->h:Lcom/viber/voip/util/b/x;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/q;->k:Z

    .line 86
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/q;->i:Z

    .line 87
    invoke-virtual {p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/q;->j:Landroid/content/res/Resources;

    .line 88
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->H()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/q;->n:Z

    .line 89
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/q;->n:Z

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/viber/voip/calls/ui/s;

    invoke-direct {v1, v0, p0}, Lcom/viber/voip/calls/ui/s;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    return-object v0
.end method

.method public abstract a(Landroid/view/View;Lcom/viber/voip/messages/orm/entity/Entity;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public a(Lcom/viber/voip/calls/ui/r;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/viber/voip/calls/ui/q;->l:Lcom/viber/voip/calls/ui/r;

    .line 291
    return-void
.end method

.method protected a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    const-string/jumbo v1, "prev_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "viber_out"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 153
    :cond_0
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public b(I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->d:Lcom/viber/voip/messages/orm/service/EntityService;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/orm/service/EntityService;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->d:Lcom/viber/voip/messages/orm/service/EntityService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->d:Lcom/viber/voip/messages/orm/service/EntityService;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/service/EntityService;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/ui/q;->b(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/calls/ui/q;->d:Lcom/viber/voip/messages/orm/service/EntityService;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/orm/service/EntityService;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    invoke-virtual {p0, p3}, Lcom/viber/voip/calls/ui/q;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/ui/q;->b(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 116
    instance-of v2, v1, Lcom/viber/voip/contacts/b/b;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/calls/ui/s;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    instance-of v2, v1, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/calls/ui/s;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    :cond_2
    new-instance v0, Lcom/viber/voip/calls/ui/s;

    invoke-direct {v0, p2, p0}, Lcom/viber/voip/calls/ui/s;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/q;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/calls/ui/s;I)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/ui/q;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :goto_0
    invoke-virtual {p0, p2, v1, p1}, Lcom/viber/voip/calls/ui/q;->a(Landroid/view/View;Lcom/viber/voip/messages/orm/entity/Entity;I)V

    .line 131
    return-object p2

    .line 127
    :cond_4
    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->i:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
