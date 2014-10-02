.class public Lcom/viber/voip/phone/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/phone/h;

.field public final b:Lcom/viber/voip/phone/h;

.field public final c:Lcom/viber/voip/phone/h;

.field public final d:Lcom/viber/voip/phone/h;

.field public final e:Lcom/viber/voip/phone/h;

.field public final f:Lcom/viber/voip/phone/h;

.field public final g:Lcom/viber/voip/phone/h;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/viber/voip/phone/b/o;->h:Landroid/view/View;

    .line 601
    const v0, 0x7f070353

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->a:Lcom/viber/voip/phone/h;

    .line 602
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->b:Lcom/viber/voip/phone/h;

    .line 603
    const v0, 0x7f070354

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    .line 604
    const v0, 0x7f070355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->d:Lcom/viber/voip/phone/h;

    .line 605
    const v0, 0x7f070356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    .line 606
    const v0, 0x7f070357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    .line 607
    const v0, 0x7f070352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/h;

    iput-object v0, p0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    .line 608
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/viber/voip/phone/b/o;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    return-void
.end method
