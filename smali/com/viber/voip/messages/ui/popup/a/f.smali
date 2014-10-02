.class Lcom/viber/voip/messages/ui/popup/a/f;
.super Lcom/viber/voip/messages/ui/popup/a/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/RelativeLayout;

.field final synthetic g:Lcom/viber/voip/messages/ui/popup/a/a;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/f;->g:Lcom/viber/voip/messages/ui/popup/a/a;

    .line 114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/popup/a/c;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V

    .line 116
    const v0, 0x7f0702b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/f;->e:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0702ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/f;->f:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/f;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/f;->f:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
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
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/popup/a/f;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V

    return-void
.end method
