.class public Lcom/viber/voip/contacts/a/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/viber/voip/contacts/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/viber/voip/contacts/a/i;->b:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/viber/voip/contacts/a/i;->c:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/a/i;->d:I

    .line 42
    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/a/i;->e:I

    .line 43
    return-void
.end method

.method private a(Landroid/view/View;I)Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/contacts/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/CallEntity;

    .line 81
    const v1, 0x7f0701bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0701bb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0701ba

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    const v4, 0x7f0701bd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    iget-object v5, p0, Lcom/viber/voip/contacts/a/i;->c:Landroid/content/Context;

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->h()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/viber/voip/util/ak;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    const v1, 0x7f0c05ad

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :goto_0
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->j()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 112
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_1
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->j()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_2
    :pswitch_0
    return-object p1

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const v1, 0x7f0c05ac

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 106
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 120
    :cond_4
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/viber/voip/contacts/a/i;->c:Landroid/content/Context;

    const v4, 0x7f0c036f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 130
    :pswitch_1
    const v0, 0x7f0c036b

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget v0, p0, Lcom/viber/voip/contacts/a/i;->d:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :pswitch_2
    const v0, 0x7f0c036b

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget v0, p0, Lcom/viber/voip/contacts/a/i;->d:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 147
    :pswitch_3
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0c036e

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget v0, p0, Lcom/viber/voip/contacts/a/i;->d:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 147
    :cond_6
    const v0, 0x7f0c036c

    goto :goto_4

    .line 153
    :pswitch_4
    const v0, 0x7f0c036d

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget v0, p0, Lcom/viber/voip/contacts/a/i;->e:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/contacts/a/i;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    const v1, 0x7f030070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/contacts/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/contacts/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/contacts/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/CallEntity;

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    invoke-direct {p0, p3}, Lcom/viber/voip/contacts/a/i;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/viber/voip/contacts/a/i;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    return-object p2
.end method
