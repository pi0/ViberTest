.class public Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-wide p0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b:J

    return-wide p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v10, -0x2

    .line 173
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    .line 174
    const-string/jumbo v0, "show_rate_dialog"

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    .line 175
    const-string/jumbo v0, "rate_dialog_shown_time"

    invoke-interface {v3, v0, v12, v13}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b:J

    .line 176
    const-string/jumbo v0, "show_facebook_like_dialog"

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->c:Z

    .line 177
    const-string/jumbo v0, "call_min_time_count"

    const/4 v4, -0x1

    invoke-interface {v3, v0, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .line 179
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 184
    const/16 v0, 0x65

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setId(I)V

    .line 185
    const-string/jumbo v0, "Show Rate"

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget-boolean v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 192
    const/16 v0, 0x66

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setId(I)V

    .line 193
    sget-boolean v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    if-nez v0, :cond_0

    sget-wide v8, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b:J

    cmp-long v0, v8, v12

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 194
    const-string/jumbo v0, "Rate Shown Today"

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 195
    sget-wide v8, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b:J

    invoke-static {v8, v9}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {v6}, Landroid/widget/CheckBox;->getId()I

    move-result v8

    invoke-virtual {v0, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    invoke-virtual {v5, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 202
    const/16 v8, 0x67

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setId(I)V

    .line 203
    sget-boolean v8, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    if-nez v8, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 204
    const-string/jumbo v1, "Show Facebook Like"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 205
    sget-boolean v1, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    invoke-virtual {v7}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Call Count: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v4

    invoke-virtual {v2, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    invoke-virtual {v5, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Lcom/viber/voip/messages/extras/fb/p;

    invoke-direct {v1, v3, v0, v7}, Lcom/viber/voip/messages/extras/fb/p;-><init>(Lcom/viber/voip/settings/l;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 232
    new-instance v1, Lcom/viber/voip/messages/extras/fb/q;

    invoke-direct {v1, v3}, Lcom/viber/voip/messages/extras/fb/q;-><init>(Lcom/viber/voip/settings/l;)V

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    new-instance v1, Lcom/viber/voip/messages/extras/fb/r;

    invoke-direct {v1, v3}, Lcom/viber/voip/messages/extras/fb/r;-><init>(Lcom/viber/voip/settings/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 250
    const-string/jumbo v1, "Rate & Facebook Like Dialogs"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 252
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->d()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    return v0
.end method

.method public static a(Lcom/viber/voip/phone/call/k;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 142
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    .line 143
    const-string/jumbo v1, "show_rate_dialog"

    invoke-interface {v2, v1, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 144
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v3

    .line 145
    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "show_facebook_like_dialog"

    invoke-interface {v2, v1, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    invoke-virtual {v3}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v3

    .line 148
    if-eqz v1, :cond_0

    const-wide/32 v5, 0x75300

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 149
    const-string/jumbo v3, "call_min_time_count"

    invoke-interface {v2, v3, v7}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v3

    .line 150
    const-string/jumbo v4, "rate_dialog_shown_time"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 151
    invoke-static {v4, v5}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v4

    .line 152
    if-gez v3, :cond_1

    .line 153
    if-eqz v4, :cond_3

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const/16 v5, 0x9

    if-lt v3, v5, :cond_2

    if-nez v4, :cond_2

    .line 157
    const-string/jumbo v0, "call_min_time_count"

    invoke-interface {v2, v0, v7}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    move v0, v1

    goto :goto_0

    .line 160
    :cond_2
    const-string/jumbo v1, "call_min_time_count"

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-boolean p0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a:Z

    return p0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    const v1, 0x7f0c062c

    new-instance v2, Lcom/viber/voip/messages/extras/fb/m;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/fb/m;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v1, 0x7f0c062d

    new-instance v2, Lcom/viber/voip/messages/extras/fb/n;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/fb/n;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v1, 0x7f0c062e

    new-instance v2, Lcom/viber/voip/messages/extras/fb/o;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/fb/o;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const v1, 0x7f0c062b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "fb://profile/121349544572559"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 132
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v1, "https://www.facebook.com/viber"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->c()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 50
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 51
    return-void
.end method
