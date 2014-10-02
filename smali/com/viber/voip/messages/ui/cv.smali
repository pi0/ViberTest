.class Lcom/viber/voip/messages/ui/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;

.field private b:[Landroid/widget/CompoundButton;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 3
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->v(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->E(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->k(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/messages/ui/cv;->b:[Landroid/widget/CompoundButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/messages/ui/bs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/cv;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1202
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->b:[Landroid/widget/CompoundButton;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1203
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->b:[Landroid/widget/CompoundButton;

    aget-object v2, v2, v0

    if-eq v2, p1, :cond_1

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->b:[Landroid/widget/CompoundButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1178
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    .line 1179
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 1180
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/cv;->a(Landroid/widget/CompoundButton;)V

    .line 1181
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->v(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1182
    if-eqz v1, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->F(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/da;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->F(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/da;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/viber/voip/messages/ui/da;->c(Z)V

    .line 1196
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 1199
    :cond_1
    return-void

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->requestFocus()Z

    .line 1188
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->G(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->E(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->H(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cz;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->H(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cz;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cz;->a(Z)V

    goto :goto_0

    .line 1192
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->k(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->I(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cv;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->I(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cy;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cy;->b(Z)V

    goto :goto_0
.end method
