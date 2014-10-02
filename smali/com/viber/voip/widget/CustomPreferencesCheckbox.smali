.class public Lcom/viber/voip/widget/CustomPreferencesCheckbox;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    .line 21
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    .line 21
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    .line 21
    iput v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 58
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->setLayoutResource(I)V

    .line 59
    sget-object v0, Lcom/viber/voip/bb;->CustomPreferencesCheckbox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 66
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 67
    packed-switch v3, :pswitch_data_0

    .line 64
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    goto :goto_1

    .line 73
    :pswitch_1
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 44
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->b:Landroid/widget/TextView;

    .line 45
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a:Landroid/widget/TextView;

    .line 47
    iget v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    if-le v0, v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 49
    iget-object v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 51
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    if-le v0, v2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/widget/CustomPreferencesCheckbox;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    :cond_1
    return-void
.end method
