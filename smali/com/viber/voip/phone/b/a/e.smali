.class public Lcom/viber/voip/phone/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/viber/voip/sound/ISoundService;

.field private b:Lcom/viber/voip/ui/ViberEditText;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View$OnClickListener;

.field private e:[Landroid/graphics/drawable/Drawable;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/sound/ISoundService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/viber/voip/phone/b/a/e;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/b/a/e;->a(Landroid/view/View;)V

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/a/e;->f:Z

    .line 36
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/e;->a:Lcom/viber/voip/sound/ISoundService;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/ui/ViberEditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/phone/b/a/e;->f:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/e;->e:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/e;->e:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/viber/voip/phone/b/a/e;->e:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/viber/voip/phone/b/a/e;->e:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/ViberEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iput-boolean v6, p0, Lcom/viber/voip/phone/b/a/e;->f:Z

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/phone/b/a/e;->f:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/viber/voip/ui/ViberEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    iput-boolean v2, p0, Lcom/viber/voip/phone/b/a/e;->f:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->a:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/e;->d:Landroid/view/View$OnClickListener;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f07022d

    const/4 v4, 0x0

    .line 47
    const v0, 0x7f070344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ViberEditText;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    .line 48
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->requestFocus()Z

    .line 49
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0, v4}, Lcom/viber/voip/ui/ViberEditText;->setInputType(I)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/ViberEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/ViberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/e;->e:[Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->b:Lcom/viber/voip/ui/ViberEditText;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/b/a/e;->a(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f070343

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/e;->c:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/e;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/e;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    const v0, 0x7f070224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f070225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "2"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f070226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "3"

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f070227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "4"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f070228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "5"

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f070229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "6"

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f07022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "7"

    const/4 v3, 0x7

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f07022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "8"

    const/16 v3, 0x8

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f07022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "9"

    const/16 v3, 0x9

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "0"

    invoke-direct {v1, p0, v2, v4}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0700b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "*"

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f07022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/g;

    const-string/jumbo v2, "#"

    const/16 v3, 0xb

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/phone/b/a/g;-><init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/a/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/phone/b/a/h;-><init>(Lcom/viber/voip/phone/b/a/e;Lcom/viber/voip/phone/b/a/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/a/e;->a(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 146
    check-cast v0, Landroid/widget/EditText;

    .line 147
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 150
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v3, v1

    if-lt v2, v1, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
