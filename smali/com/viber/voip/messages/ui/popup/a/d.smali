.class Lcom/viber/voip/messages/ui/popup/a/d;
.super Lcom/viber/voip/messages/ui/popup/a/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/widget/LinearLayout;

.field public final f:Lcom/viber/voip/messages/adapters/MediaLayout;

.field public final g:Lcom/viber/voip/widget/PttLayout;

.field public final h:Landroid/widget/TextView;

.field final synthetic i:Lcom/viber/voip/messages/ui/popup/a/a;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/d;->i:Lcom/viber/voip/messages/ui/popup/a/a;

    .line 88
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/popup/a/c;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V

    .line 90
    const v0, 0x7f0702b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->e:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f0702b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/MediaLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    .line 92
    const v0, 0x7f0702b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PttLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->g:Lcom/viber/voip/widget/PttLayout;

    .line 93
    const v0, 0x7f0702b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->e:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/a/e;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/popup/a/e;-><init>(Lcom/viber/voip/messages/ui/popup/a/d;Lcom/viber/voip/messages/ui/popup/a/a;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/popup/a/d;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V

    return-void
.end method
