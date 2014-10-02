.class public Lcom/viber/voip/messages/ui/forward/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x4120

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/forward/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 27
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/a;->f:Landroid/view/LayoutInflater;

    .line 28
    iput-boolean p5, p0, Lcom/viber/voip/messages/ui/forward/a;->d:Z

    .line 29
    iput-object p3, p0, Lcom/viber/voip/messages/ui/forward/a;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/forward/a;->c:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/a;->e:Landroid/content/res/ColorStateList;

    .line 32
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/a;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    :cond_0
    const v0, 0x7f0700ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0701bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    if-eqz p4, :cond_1

    .line 53
    iget-object v2, p0, Lcom/viber/voip/messages/ui/forward/a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sget v3, Lcom/viber/voip/messages/ui/forward/a;->a:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sget v5, Lcom/viber/voip/messages/ui/forward/a;->a:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/forward/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_0
    return-object p2

    .line 59
    :cond_1
    iget v2, p0, Lcom/viber/voip/messages/ui/forward/a;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/forward/a;->d:Z

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/viber/voip/messages/ui/forward/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/forward/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/forward/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/ui/forward/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/ui/forward/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
