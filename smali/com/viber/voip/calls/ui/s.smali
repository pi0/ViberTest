.class public final Lcom/viber/voip/calls/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/widget/AvatarView;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/view/View;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/view/View;

.field private j:I

.field private k:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

.field private l:Lcom/viber/voip/contacts/b/b;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/s;->o:Z

    .line 220
    const v0, 0x7f0700af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    .line 222
    const v0, 0x7f0700d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0700e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0700f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/AvatarView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    .line 226
    const v0, 0x7f0700f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0700f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->f:Landroid/widget/ImageView;

    .line 228
    const v0, 0x7f0700f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->i:Landroid/view/View;

    .line 230
    const v0, 0x7f0700f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/s;->g:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->g:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/AvatarView;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput p1, p0, Lcom/viber/voip/calls/ui/s;->j:I

    .line 238
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/s;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/s;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/s;->o:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/calls/entities/AggregatedCallEntity;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->k:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    return-object v0
.end method

.method protected a(Lcom/viber/voip/calls/entities/AggregatedCallEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/viber/voip/calls/ui/s;->k:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 250
    return-void
.end method

.method protected a(Lcom/viber/voip/contacts/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/viber/voip/calls/ui/s;->l:Lcom/viber/voip/contacts/b/b;

    .line 258
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/viber/voip/calls/ui/s;->m:Ljava/lang/String;

    .line 266
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/viber/voip/calls/ui/s;->n:Z

    .line 274
    return-void
.end method

.method public b()Lcom/viber/voip/contacts/b/b;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->l:Lcom/viber/voip/contacts/b/b;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/viber/voip/calls/ui/s;->o:Z

    .line 282
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/calls/ui/s;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/s;->n:Z

    return v0
.end method
