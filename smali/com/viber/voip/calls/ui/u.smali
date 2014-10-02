.class public Lcom/viber/voip/calls/ui/u;
.super Lcom/viber/voip/calls/ui/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/calls/ui/q",
        "<",
        "Lcom/viber/voip/contacts/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private n:Lcom/viber/voip/calls/ui/PhoneFragment;

.field private o:Lcom/viber/voip/contacts/e/a;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/ui/u;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/contacts/e/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/ui/q;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/messages/orm/service/EntityService;)V

    .line 36
    iput-object p1, p0, Lcom/viber/voip/calls/ui/u;->n:Lcom/viber/voip/calls/ui/PhoneFragment;

    .line 37
    iput-object p2, p0, Lcom/viber/voip/calls/ui/u;->o:Lcom/viber/voip/contacts/e/a;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/calls/ui/u;->o:Lcom/viber/voip/contacts/e/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/e/a;->d()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/contacts/b/b;I)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v10, 0x7f090058

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 49
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0, v9}, Lcom/viber/voip/calls/ui/s;->b(Z)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/viber/voip/calls/ui/s;->a(Lcom/viber/voip/contacts/b/b;)V

    .line 56
    if-eqz p2, :cond_2

    .line 57
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/calls/ui/u;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 65
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->j()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/calls/ui/u;->p:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/b/f;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/viber/voip/contacts/b/b;->b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    :goto_2
    move-object v3, v2

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    move-object v2, v4

    .line 73
    :goto_3
    if-nez v1, :cond_4

    .line 74
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->j()Ljava/util/TreeMap;

    move-result-object v3

    .line 76
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 78
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/f;

    .line 84
    :cond_4
    :goto_4
    if-eqz v1, :cond_9

    .line 85
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/phone/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    if-nez p2, :cond_5

    .line 88
    iget-object v4, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_5
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/s;->a(Ljava/lang/String;)V

    .line 91
    if-eqz v2, :cond_8

    .line 92
    invoke-virtual {v0, v9}, Lcom/viber/voip/calls/ui/s;->a(Z)V

    .line 108
    :cond_6
    :goto_5
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/u;->i:Z

    if-eqz v1, :cond_a

    .line 112
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 114
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/calls/ui/u;->j:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/calls/ui/u;->j:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_6
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/u;->k:Z

    if-eqz v1, :cond_b

    .line 121
    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v0, v7}, Lcom/viber/voip/widget/AvatarView;->setVisibility(I)V

    goto/16 :goto_0

    .line 79
    :cond_7
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 80
    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/f;

    goto :goto_4

    .line 95
    :cond_8
    invoke-virtual {v0, v8}, Lcom/viber/voip/calls/ui/s;->a(Z)V

    goto :goto_5

    .line 100
    :cond_9
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/s;->a(Ljava/lang/String;)V

    .line 102
    if-nez p2, :cond_6

    .line 103
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    const v2, 0x7f0c0370

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 117
    :cond_a
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 123
    :cond_b
    iget-object v1, v0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v1, v8}, Lcom/viber/voip/widget/AvatarView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/viber/voip/calls/ui/u;->g:Lcom/viber/voip/util/b/w;

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    iget-object v3, p0, Lcom/viber/voip/calls/ui/u;->h:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v2, v0, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    move-object v1, v4

    goto/16 :goto_2

    :cond_d
    move-object v1, v3

    move-object v2, v3

    goto/16 :goto_3
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/viber/voip/messages/orm/entity/Entity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p2, Lcom/viber/voip/contacts/b/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/calls/ui/u;->a(Landroid/view/View;Lcom/viber/voip/contacts/b/b;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/calls/ui/u;->p:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/u;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 135
    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->b()Lcom/viber/voip/contacts/b/b;

    move-result-object v7

    .line 136
    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->c()Ljava/lang/String;

    move-result-object v3

    .line 137
    if-nez v7, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-interface {v7}, Lcom/viber/voip/contacts/b/b;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v4, v4, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v4}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    .line 142
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0700f1

    if-ne v4, v5, :cond_6

    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/viber/voip/calls/ui/u;->l:Lcom/viber/voip/calls/ui/r;

    if-eqz v4, :cond_4

    .line 152
    iget-object v4, p0, Lcom/viber/voip/calls/ui/u;->l:Lcom/viber/voip/calls/ui/r;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->d()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v4, v3, v0}, Lcom/viber/voip/calls/ui/r;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    :cond_2
    sget-object v4, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v4, v4, Lcom/viber/voip/a/l;->b:Lcom/viber/voip/a/k;

    invoke-virtual {v4}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move v0, v2

    .line 152
    goto :goto_2

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/viber/voip/calls/ui/u;->n:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v4}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->d()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {p0, v8, v1, v3}, Lcom/viber/voip/calls/ui/u;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3

    .line 159
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700d6

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/viber/voip/calls/ui/u;->a:Landroid/content/Context;

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
.end method
