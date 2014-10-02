.class public Lcom/viber/voip/widget/VibeGroupNameTextView;
.super Lcom/viber/voip/ui/ViberTextView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 34
    iput-object p1, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->b:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->a:Z

    .line 37
    iget-boolean v0, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->a:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 39
    iput-boolean v5, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->c:Z

    .line 40
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020420

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->invalidate()V

    .line 48
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    iget-boolean v0, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->c:Z

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getLineCount()I

    move-result v0

    .line 55
    if-le v0, v4, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 58
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/viber/voip/widget/VibeGroupNameTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020420

    invoke-direct {v0, v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v0, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/VibeGroupNameTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iput-boolean v4, p0, Lcom/viber/voip/widget/VibeGroupNameTextView;->c:Z

    .line 71
    invoke-super {p0}, Lcom/viber/voip/ui/ViberTextView;->onPreDraw()Z

    move-result v0

    return v0
.end method
