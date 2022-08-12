import nodemailer from "nodemailer";
export default async function (options, res) {
    const transporter = nodemailer.createTransport({
        service: "Gmail",
        auth: {
            user: "pursatly***REMOVED***@gmail.com",
            pass: "***REMOVED***",
        },
    });

    const mailOptions = {
        from: `Sebet Contact-Us <pursatly***REMOVED***@gmail.com>`,
        to: "pursatly***REMOVED***@gmail.com",
        subject: 'Biri "Sebet" administratsiýasy bilen habarlaşmak isleýär',
        text: `ADY: `,
    };
    try {
        await transporter.sendMail(mailOptions, (err, info) => {
            if (err) {
                console.log(`Error occurred. ${err.message}`);
            }
            console.log(info);
        });
        await res.status(200).json(req.body);
    } catch (error) {
        res.status(500);
    }
}
