.class public Lcom/viber/voip/calls/ui/p;
.super Lcom/viber/voip/calls/ui/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/calls/ui/q",
        "<",
        "Lcom/viber/voip/calls/entities/AggregatedCallEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private n:Lcom/viber/voip/calls/ui/PhoneFragment;

.field private o:Lcom/viber/voip/calls/a/a;

.field private p:Lcom/viber/voip/calls/ui/u;

.field private q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/ui/p;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;Lcom/viber/voip/calls/ui/u;Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/ui/q;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/messages/orm/service/EntityService;)V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/calls/ui/p;->n:Lcom/viber/voip/calls/ui/PhoneFragment;

    .line 39
    iput-object p2, p0, Lcom/viber/voip/calls/ui/p;->o:Lcom/viber/voip/calls/a/a;

    .line 40
    iput-object p3, p0, Lcom/viber/voip/calls/ui/p;->p:Lcom/viber/voip/calls/ui/u;

    .line 41
    iput-object p4, p0, Lcom/viber/voip/calls/ui/p;->q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    .line 42
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/calls/ui/p;->o:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->b()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/calls/entities/AggregatedCallEntity;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0200cd

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 53
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v6

    .line 57
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->b()Lcom/viber/voip/contacts/b/f;

    .line 60
    invoke-virtual {v0, v2}, Lcom/viber/voip/calls/ui/s;->b(Z)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/calls/entities/AggregatedCallEntity;)V

    .line 62
    invoke-virtual {v0, v6}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/contacts/b/b;)V

    .line 63
    if-eqz v6, :cond_2

    .line 64
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/phone/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v7, "-2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "-1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 71
    if-nez v6, :cond_3

    .line 72
    iget-object v7, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_3
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/s;->a(Ljava/lang/String;)V

    .line 83
    :goto_1
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    const v7, 0x7f0c05ad

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :goto_2
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/s;->a(Z)V

    .line 101
    iget-object v7, v0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->e:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/viber/voip/calls/ui/p;->c:Lcom/viber/voip/calls/ui/t;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->j()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/viber/voip/calls/ui/t;->a(I)I

    move-result v7

    invoke-virtual {v1, v7, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 103
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/viber/voip/calls/ui/p;->c:Lcom/viber/voip/calls/ui/t;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->j()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/viber/voip/calls/ui/t;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, v0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->a()I

    move-result v1

    if-le v1, v5, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    const-string/jumbo v7, "(%d)"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->a()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/p;->k:Z

    if-eqz v1, :cond_a

    .line 109
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v1, v3}, Lcom/viber/voip/widget/AvatarView;->setVisibility(I)V

    .line 114
    :goto_5
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 115
    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_c

    .line 116
    check-cast v1, Landroid/widget/Checkable;

    iget-object v3, p0, Lcom/viber/voip/calls/ui/p;->q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 121
    :goto_6
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/p;->i:Z

    if-eqz v1, :cond_e

    .line 122
    iget-object v3, v0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v4

    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 127
    :goto_8
    iget-object v3, v0, Lcom/viber/voip/calls/ui/s;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v5

    :goto_9
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 77
    :cond_4
    if-nez v6, :cond_5

    .line 78
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    const v7, 0x7f0c0370

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :cond_5
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/s;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :cond_6
    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    const v7, 0x7f0c05ac

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 88
    :cond_7
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/viber/voip/calls/ui/p;->c:Lcom/viber/voip/calls/ui/t;

    invoke-interface {p2}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->h()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/viber/voip/calls/ui/t;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 101
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->f:Landroid/content/res/ColorStateList;

    goto/16 :goto_3

    :cond_9
    move v1, v3

    .line 105
    goto/16 :goto_4

    .line 111
    :cond_a
    iget-object v3, p0, Lcom/viber/voip/calls/ui/p;->g:Lcom/viber/voip/util/b/w;

    if-eqz v6, :cond_b

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v1

    :goto_a
    iget-object v6, v0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    iget-object v7, p0, Lcom/viber/voip/calls/ui/p;->h:Lcom/viber/voip/util/b/x;

    invoke-virtual {v3, v1, v6, v7}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 118
    :cond_c
    iget-object v3, p0, Lcom/viber/voip/calls/ui/p;->q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Z)Z

    goto/16 :goto_6

    .line 122
    :cond_d
    const v1, 0x7f0200cc

    goto :goto_7

    .line 124
    :cond_e
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_8

    :cond_f
    move v1, v2

    .line 127
    goto :goto_9
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/viber/voip/messages/orm/entity/Entity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p2, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/calls/ui/p;->a(Landroid/view/View;Lcom/viber/voip/calls/entities/AggregatedCallEntity;I)V

    return-void
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/calls/ui/p;->p:Lcom/viber/voip/calls/ui/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/p;->p:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/u;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/p;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 136
    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->a()Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0700f1

    if-ne v1, v2, :cond_3

    .line 149
    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->l:Lcom/viber/voip/calls/ui/r;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->l:Lcom/viber/voip/calls/ui/r;

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->o()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/calls/ui/r;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/calls/ui/p;->n:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->o()Z

    move-result v1

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v1, v0}, Lcom/viber/voip/calls/ui/p;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0700d6

    if-ne v1, v2, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v7

    .line 159
    if-eqz v7, :cond_4

    .line 160
    iget-object v0, p0, Lcom/viber/voip/calls/ui/p;->a:Landroid/content/Context;

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v1

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v3

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_4
    if-eqz v0, :cond_0

    .line 163
    iget-object v3, p0, Lcom/viber/voip/calls/ui/p;->a:Landroid/content/Context;

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->k()Z

    move-result v7

    move-object v6, v5

    invoke-static/range {v3 .. v8}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V

    goto :goto_0
.end method
