.class public Lcom/viber/voip/contacts/ui/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/contacts/b/e;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Landroid/widget/ImageView;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->n:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->o:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->p:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->m:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/e;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ak;->a:Lcom/viber/voip/contacts/b/e;

    return-object v0
.end method

.method public a(Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ak;->a:Lcom/viber/voip/contacts/b/e;

    .line 40
    return-void
.end method
